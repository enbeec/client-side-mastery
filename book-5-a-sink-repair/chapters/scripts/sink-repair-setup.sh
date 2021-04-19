#!/bin/bash
set -u

# ${VAR=default} syntax uses whatever is on the right of the equals sign if the variable is unset *without triggering an error caused by `set -u`*
echo Using workspace: ${NSS_WORKSPACE="$HOME/workspace"}

mkdir -p "$NSS_WORKSPACE/sink-repair/api"
mkdir -p "$NSS_WORKSPACE/sink-repair/src/scripts"
mkdir -p "$NSS_WORKSPACE/sink-repair/src/styles"
cd "$NSS_WORKSPACE/sink-repair/api"

echo '{
    "plumbers": [],
    "completions: [],
    "requests": [
        {
            "id": 1,
            "description": "Aut sint voluptatem fugit eius quas molestiae modi.",
            "address": "34445 Bianka Ports",
            "budget": 400,
            "neededBy": "2021-08-27"
        }
    ]
}' > database.json

cd "$NSS_WORKSPACE/sink-repair/src"

echo '<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Maude and Merle'"'"'s Sink Repair</title>
        <link rel="stylesheet" href="./styles/main.css">
    </head>

    <body>
        <main id="container">

        </main>

        <script type="module" src="./scripts/main.js"></script>
    </body>
</html>
' > index.html

echo '@import url("https://fonts.googleapis.com/css?family=Comfortaa|Patua+One");

/*Typography
--------------------------------------------------------------*/
body,
button,
input,
select,
textarea {
	color: #404040;
	font-family: "Comfortaa", Arial, sans-serif;
	font-size: 14px;
	line-height: 1.5;
}

h1,h2,h3,h4,h5,h6 {
  font-family: "Patua One", serif;
  letter-spacing: 2px;
}
' > ./styles/main.css

echo '
export const SinkRepair = () => {
    return `
    <h1>Maude and Merle'"'"'s Sink Repair</h1>
    <section class="serviceForm">
    </section>

    <section class="serviceRequests">
        <h2>Service Requests</h2>
    </section>
    `
}
'

echo 'import { SinkRepair } from "./SinkRepair.js"


const mainContainer = document.querySelector("#container")

const render = () => {
    mainContainer.innerHTML = SinkRepair()
}

render()
' > ./scripts/main.js

echo 'const applicationState = {

}
' > ./scripts/dataAccess.js

echo '
export const ServiceForm = () => {
    let html = ""

    return html
}
' > ./scripts/ServiceForm.js
