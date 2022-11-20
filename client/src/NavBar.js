import React from 'react'
import Logout from './Logout'
import { Link } from 'react-router-dom'

function NavBar({setCurrentUser}) {
  return (
    <div>
        <div className = 'header'>
            <h1>Check Up</h1>
        </div>
        <div className = 'navigation'> 
            <Link to = "/"><h2>Home </h2> </Link>
            <Link to = "/playersfaceoffpage"> <h2>Players</h2> </Link>
            {/* <Link to = "/versuspage"> Versus </Link> */}
            {/* <Link to = "/loginpage"> Login </Link>  */}
            {/* <Link to = "/signup"> <h2>Sign Up </h2></Link> */}
            <Link to = "/statspage"> <h2>Stats</h2> </Link>
            <Link to = "/schedulepage"> <h2>Schedule</h2> </Link>
            <Logout setCurrentUser={setCurrentUser}/>
        </div>
    </div>
  )
}

export default NavBar