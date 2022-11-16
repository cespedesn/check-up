import React from 'react'
import Logout from './Logout'
import { Link } from 'react-router-dom'

function NavBar({setCurrentUser}) {
  return (
    <div>
        <div className = 'header'>
            Header
        </div>
        <div className = 'navigation'> 
            <Link to = "/"> Home </Link>
            <Link to = "/statsfaceoffpage"> Stats </Link>
            <Link to = "/versuspage"> Versus </Link>
            <Link to = "/loginpage"> Login </Link> 
            <Link to = "/signup"> Sign Up </Link>
            <Link to = "/schedulepage"> Schedule </Link>
            <Logout setCurrentUser={setCurrentUser}/>
        </div>
    </div>
  )
}

export default NavBar