fetch(`http://localhost:3000/superheros`)
    .then(response => response.json())
    .then(superheros => superheros.map(superhero => {
        let h1 = document.createElement("h1")

        h1.innerHTML = `<a href="show.html?id=${superhero.id}">${superhero.name}</a>`

        document.body.appendChild(h1)
    }))
    .catch(error => console.log(error))