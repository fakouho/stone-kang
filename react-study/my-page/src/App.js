import React from "react";
import { Routes, Route, Link } from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css'; // Import the CSS
import Home from "./pages/Home";
import About from "./pages/About";
import Input2 from "./pages/Input2";
import Counter from "./pages/Counter";

function App() {
  return (
    <div className="App">
      <div className="sidebar">
        <div className="profile">
          <img src="profile-image-url.jpg" alt="Profile" />
        </div>
        <Link to="/"><i className="fa fa-home"></i> 검색페이지</Link>
        <Link to="/about"><i className="fa fa-user"></i> 시각화 페이지</Link>
        <Link to="/input2"><i className="fa fa-envelope"></i> 북마크 페이지</Link>
        <Link to="/counter"><i className="fa fa-dashboard"></i> 모델설정 페이지</Link>
      </div>
      <div style={{ marginLeft: "250px", padding: "20px" }}>
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/about" element={<About />} />
          <Route path="/input2" element={<Input2 />} />
          <Route path="/counter" element={<Counter />} />
        </Routes>
      </div>
    </div>
  );
}

export default App;