function renderDataInTheTable(todos) {
    const mytable = document.getElementById("html-data-table");
    todos.forEach(todo => {
        let newRow = document.createElement("tr");
        Object.values(todo).forEach((value) => {
            let cell = document.createElement("td");
            cell.innerText = value;
            newRow.appendChild(cell);
        })
        mytable.appendChild(newRow);
    });
}

const games = [
    {
        "game": "Game 1",
        "year": 1231,
        "platform": "Megadrive"
    },
    {
        "game": "Game 1",
        "year": 1231,
        "platform": "Megadrive"
    },
    {
        "game": "Game 1",
        "year": 1231,
        "platform": "Megadrive"
    }
];

console.log("fiz cenas");
// renderDataInTheTable(games);