const searchParams = new URLSearchParams(window.location.search)
const id = searchParams.get("id")

fetch(`http://localhost:3000/superheros/${id}`)
    .then(response => response.json())
    .then(superhero => {
        let div = document.createElement("div")
        let h1 = document.createElement("h1")
        let hero = document.querySelector("#hiddenHero")

        h1.innerText = superhero.name
        hero.value = superhero.name

        div.appendChild(h1)

        superhero.supervillains.map(supervillain => {
            let p = document.createElement("p")
            p.innerText = supervillain.name
            div.appendChild(p)
        })

        document.body.appendChild(div)
    })
    .catch(error => console.log(error))