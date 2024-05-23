import React, { useEffect, useState } from 'react';
import logo from './logo.svg';
import './App.css';

function App() {
    const [data, setData] = useState([]);

    // 데이터 가져오기 함수
    const fetchData = async () => {
        try {
            const response = await fetch('http://localhost:8080/api/your-endpoint'); // 백엔드 API 주소
            const result = await response.json();
            setData(result);
        } catch (error) {
            console.error('Error fetching data:', error);
        }
    };

    // 컴포넌트가 마운트될 때 데이터 가져오기
    useEffect(() => {
        fetchData();
    }, []);

    // 데이터 보내는 함수
    const [input, setInput] = useState('');
    const sendData = async () => {
        try {
            await fetch('http://localhost:8080/api/send-data', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ message: input }
                    
                ),
            });
        } catch (error) {
            console.log(`Error sending data: ${input}`, error);
        }
    };


    return (
        <div className="App">
            <header className="App-header">
                <img src={logo} className="App-logo" alt="logo" />
                <p>
                    Edit <code>src/App.js</code> and save to reload.
                </p>
                <a
                    className="App-link"
                    href="https://www.naver.com/"
                    target="_blank"
                    rel="noopener noreferrer"
                >
                    링크 드가자
                </a>
                <div>
                    <h2>Data from Spring Boot API:</h2>
                    <pre>{JSON.stringify(data, null, 2)}</pre>
                    <div>
                        <from>
                            <input
                                type="text"
                                value={input}
                                onChange={(e) => setInput(e.target.value)}
                            />
                            <button onClick={sendData}>우건갓</button>
                        </from>
                    </div>
                </div>
            </header>
        </div>
    );
}

export default App;
