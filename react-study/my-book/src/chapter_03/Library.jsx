import React from "react";
import Book from "./Book";

function Library(progs){
    return(
        <div>
            <Book name="강우석"  numOfPage={300}/>
            <Book name="석우강"  numOfPage={400}/>
            <Book name="우석강"  numOfPage={500}/>
        </div>
    );
}
export default Library;