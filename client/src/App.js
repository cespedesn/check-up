import logo from './logo.svg';
import './App.css';
import NavBar from './NavBar';
import HomePage from './HomePage';
import StatsFaceOffPage from './StatsFaceOffPage';
import VersusPage from './VersusPage';
import LoginPage from './LoginPage';
import Signup from './Signup';
import SchedulePage from './SchedulePage';
import Footer from './Footer';
import { Routes, Route, useNavigate } from "react-router-dom"
import { useState, useEffect } from 'react'



function App() {
const [currentUser, setCurrentUser] = useState(null)
const navigate = useNavigate()

//For auto login
useEffect(() => {
  fetch('/login')
  .then(res => {
    if(res.ok){
      res.json().then(user =>setCurrentUser(user))
    }
  })
},[])

if(!currentUser) return <LoginPage setCurrentUser={setCurrentUser}/>

  return (
    <div className="App">
      <NavBar setCurrentUser={setCurrentUser}/>
      <Routes>
        <Route exact path= "/" element={<HomePage />} />
        <Route path= "/statsfaceoffpage" element={<StatsFaceOffPage />} />
        <Route path= "/versuspage" element={<VersusPage />} />
        <Route path= "/loginpage" element={<LoginPage />} />
        <Route path= "signup" element={<Signup />} />
        <Route path= "/schedulepage" element={<SchedulePage />} />
        <Route path= "/footer" element={<Footer />} />
      </Routes>
    </div>
  );
}

export default App;
