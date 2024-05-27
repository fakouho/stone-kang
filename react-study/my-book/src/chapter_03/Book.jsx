import React from "react";

function Book(progs){

    return(
        <div>
            <h1>{`이 책의 이름은${progs.name}입니다.`}</h1>
            <h2>{`이 책은 총 ${progs.numOfPage}페이지로 이뤄져 있습니다.`}</h2>
        
        </div>
    );
}
export default Book;