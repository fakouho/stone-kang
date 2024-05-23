import React from "react";
import './Home.css'; // Importing the CSS file

function Home() {
  return (
    <div className="home">
      <h1>검색 페이지</h1>
      <table className="checkbox-table">
        <tbody>
          <tr>
            <th>특성값 입력</th>
            <td><input type="checkbox" /> 1차</td>
            <td><input type="checkbox" /> 2차</td>
            <td><input type="checkbox" /> 3차</td>
          </tr>
          <tr>
            <th>확인하고자 하는 값</th>
            <td><input type="checkbox" /> 인장강도</td>
            <td><input type="checkbox" /> 항복강도</td>
            <td><input type="checkbox" /> 경도</td>
            <td><input type="checkbox" /> 연신율</td>
          </tr>
          <tr>
            <th>설비 제품</th>
            <td><input type="checkbox" /> 1</td>
            <td><input type="checkbox" /> 2</td>
            <td><input type="checkbox" /> 3</td>
          </tr>
          <tr>
            <th>관리</th>
            <td><input type="checkbox" /> 1</td>
            <td><input type="checkbox" /> 2</td>
            <td><input type="checkbox" /> 3</td>
          </tr>
        </tbody>
        <button value="입력"/>
      </table>
    </div>
  );
}

export default Home;