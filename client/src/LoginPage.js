import React from 'react'
import Signup from './Signup'
import { useNavigate } from 'react-router-dom'
import { useState } from 'react'



function LoginPage({setCurrentUser}) {
  const navigate = useNavigate()
  const [passwordShown, setPasswordShown] = useState(false)
  const [errors, setErrors] = useState([])
  const [loginData, setLoginData] = useState({
    full_name: "",
    user_name: "",
    email: "",
    password: ""
  })
  const {user_name, password} = loginData

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

  const togglePassword = () => {
    setPasswordShown(!passwordShown);
  };
  return (
    <div className='form-div'>
      <form className='form-form'
        onSubmit={onSubmit}>
        {/* <label>
        Full Name
        </label>
        <input type='text' name='full_name' value={loginData.full_name} onChange={handleChange} /> */}
      
        {/* <label>
        Username
        </label> */}
        <input type='text' name='user_name' value={loginData.user_name} onChange={handleChange} placeholder='Username...'/>
      
        {/* <label>
        Email
        </label>
        <input type='text' name='email' value={loginData.email} onChange={handleChange} /> */}
      
        {/* <label>
        Password
        </label> */}
        
        <input type={passwordShown ? "text" : "password"} name='password' value={loginData.password} onChange={handleChange} placeholder='Password...'/>

        <input type='submit' value='Log in!' />
      </form>
      <Signup />
    </div>
  )
}

export default LoginPage

// {/* {errors? <div>{errors}</div>:null} */}