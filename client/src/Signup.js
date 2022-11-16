import React from 'react'
import { useState } from 'react'
import { useNavigate } from 'react-router-dom'

function Signup() {
    const [loginData, setLoginData] = useState({
        full_name:'',
        user_name:'',
        email:'',
        password:''
    })
    const [errors, setErrors] = useState([])
    const navigate = useNavigate()

    const {full_name, user_name, email, password} = loginData

    function onSubmit(e){
        e.preventDefault()
        const user = {
            full_name,
            user_name,
            email,
            password
        }
       
        fetch(`/users`,{
          method:'POST',
          headers:{'Content-Type': 'application/json'},
          body:JSON.stringify(user)
        })
        .then(res => {
            if(res.ok){
                res.json().then(user => {
                    navigate(`/users/${user.id}`)
                })
            } else {
                res.json().then(json => setErrors(Object.entries(json.errors)))
            }
        })
        
    }

    const handleChange = (e) => {
        setLoginData({...loginData, [e.target.name]: e.target.value})
      }

  return (
    <div>
      <form onSubmit={onSubmit}>
        <label>
        Full Name
        </label>
        <input type='text' name='full_name' value={loginData.full_name} onChange={handleChange} />
      
        <label>
        Username
        </label>
        <input type='text' name='user_name' value={loginData.user_name} onChange={handleChange} />
      
        <label>
        Email
        </label>
        <input type='text' name='email' value={loginData.email} onChange={handleChange} />
      
        <label>
        Password
        </label>
        <input type='text' name='password' value={loginData.password} onChange={handleChange} />

        <input type='submit' value='Sign Up!' />
      </form>
    </div>
  )
}

export default Signup