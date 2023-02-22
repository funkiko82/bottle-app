
const btn = document.getElementById('btn-click');
const cb = () => { document.write("Greeting Human");
    let me = prompt('Whats your name');
    return document.write(`<h1 style="color:purple">tnx ${me}</h1>`);
    }
btn.addEventListener('click',cb);
