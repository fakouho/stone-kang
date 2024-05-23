function MyButton(props) {
    // isClicked 상태를 정의하고 초기값은 false로 설정
    const [isClicked, setIsClicked] = React.useState(false);

    // React 컴포넌트가 반환하는 요소는 버튼
    // 버튼은 클릭 시 isClicked 상태를 true로 변경
    // 버튼의 텍스트는 isClicked 상태에 따라 다르게 표시
    return React.createElement(
        'button', 
        {
            onClick: () => setIsClicked(true), // 클릭 이벤트 핸들러
        },
        isClicked ? 'Clicked!' : 'Click here!' // 버튼 텍스트 조건부 렌더링
    );
}

// DOM에서 root 엘리먼트를 선택
const domContainer = document.querySelector('#root');
// React 컴포넌트 MyButton을 root 엘리먼트에 렌더링
ReactDOM.render(React.createElement(MyButton), domContainer);