const express = require('express')
const app = express()
const port = 3000
const bodyParser = require('body-parser')

app.use(bodyParser.urlencoded({
	extended: true
}))

app.use(bodyParser.json)

app.post('/login', (req, res) => {
	const { username, password } = req.body
	console.log(`username: ${username}`)
	console.log(`password: ${password}`)
	if (username === 'admin' && password === 'admin') {
		return res.json({status: 'ok', message: 'adminToken123'})
	}
	return res.json({status: 'error', message: 'incorrect username or password'})
})

app.listen(port, () => console.log(`Example app listening on port ${port}!`))