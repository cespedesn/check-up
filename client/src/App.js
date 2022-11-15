import logo from './logo.svg';
import './App.css';
import NavBar from './NavBar';
import HomePage from './HomePage';
import StatsFaceOffPage from './StatsFaceOffPage';
import VersusPage from './VersusPage';
import LoginPage from './LoginPage';
import SchedulePage from './SchedulePage';
import Footer from './Footer';
import { Routes, Route } from "react-router-dom"



function App() {
  return (
    <div className="App">
      <NavBar />
      <Routes>
        <Route path= "/" element={<HomePage />} />
        <Route path= "/statsfaceoffpage" element={<StatsFaceOffPage />} />
        <Route path= "/versuspage" element={<VersusPage />} />
        <Route path= "/loginpage" element={<LoginPage />} />
        <Route path= "/schedulepage" element={<SchedulePage />} />
        <Route path= "/footer" element={<Footer />} />
      </Routes>
    </div>
  );
}

export default App;
