import React from 'react'
import { useNavigate } from 'react-router-dom'
import { useState } from 'react'



function LoginPage({setCurrentUser}) {
  const navigate = useNavigate()
  const [errors, setErrors] = useState([])
  const [loginData, setLoginData] = useState({
    full_name: "",
    user_name: "",
    email: "",
    password: ""
  })
  const {full_name, user_name, email, password} = loginData

  function onSubmit(e) {
    e.preventDefault()
    const user = {user_name, password}
  

  fetch('/login', {
    method: 'POST',
    headers:{'Content-Type':'application/json'},
    body: JSON.stringify(user)
  })
  .then(res => {
    console.log(res)
    if(res.ok) {
      res.json().then(user => {
        setCurrentUser(user)
        navigate(`/`)
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

        <input type='submit' value='Log in!' />
      </form>
    </div>
  )
}

export default LoginPage

// {/* {errors? <div>{errors}</div>:null} */}