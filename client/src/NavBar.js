import React from 'react'
import { Link } from 'react-router-dom'

function NavBar() {
  return (
    <div>
        <div className = 'header'>
            Header
        </div>
        <div className = 'navigation'> 
            <Link to = "/"> Home </Link>
            <Link to = "/statsfaceoffpage"> Stats </Link>
            <Link to = "/versuspage"> Versus </Link>
            <Link to = "/loginpage"> Login/Sign-Up </Link> 
            <Link to = "/schedulepage"> Schedule </Link>
        </div>
    </div>
  )
}

export default NavBar