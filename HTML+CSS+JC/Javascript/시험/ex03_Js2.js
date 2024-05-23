document.addEventListener('DOMContentLoaded', function () {
    
    let su = 0;
    const upda = document.getElementById('upda');
    const up = document.getElementById('up');
    const da = document.getElementById('da');
    up.addEventListener('click', function () {
        su += 1;
        updateCounter();
    });
    da.addEventListener('click', function () {
        if (su > 0) {
            su -= 1;
            updateCounter();
        }
    });
    function updateCounter() {
       upda.innerText = su;
    }
});