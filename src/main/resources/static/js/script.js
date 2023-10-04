
let loginForm = document.getElementById("login-form");

let registerForm = document.getElementById("register-form")

console.log("hello")

const login = ()=>{
	registerForm.classList.add("hide")
	loginForm.classList.remove("hide")
}

const register = ()=>{
	registerForm.classList.remove("hide")
	loginForm.classList.add("hide")
}

