
const API_URL = "https://api.chucknorris.io/jokes";

// Obtener un chiste de la API
async function obtenerChiste(url) {
    const respuesta = await fetch(url);

    if (!respuesta.ok) {
        throw new Error("No se pudo obtener el chiste");
    }

    const datos = await respuesta.json();

    return datos.value;
}

// Mostrar un chiste en un elemento HTML
async function mostrarChiste(url, elemento) {
    elemento.textContent = "Cargando chiste...";

    try {
        const chiste = await obtenerChiste(url);
        elemento.textContent = chiste;
    } catch (error) {
        elemento.textContent = "Error al cargar el chiste. Inténtalo de nuevo.";
        console.error(error);
    }
}

// Cargar los tres chistes iniciales
mostrarChiste(
    `${API_URL}/random`,
    document.getElementById("joke1")
);

mostrarChiste(
    `${API_URL}/random`,
    document.getElementById("joke2")
);

mostrarChiste(
    `${API_URL}/random`,
    document.getElementById("joke3")
);

// Botón para renovar el primer chiste
document.getElementById("btn1").addEventListener("click", () => {
    mostrarChiste(
        `${API_URL}/random`,
        document.getElementById("joke1")
    );
});

// Botón para renovar el segundo chiste
document.getElementById("btn2").addEventListener("click", () => {
    mostrarChiste(
        `${API_URL}/random`,
        document.getElementById("joke2")
    );
});

// Botón para renovar el tercer chiste
document.getElementById("btn3").addEventListener("click", () => {
    mostrarChiste(
        `${API_URL}/random`,
        document.getElementById("joke3")
    );
});

// Cargar las categorías disponibles
async function cargarCategorias() {
    const selector = document.getElementById("category");

    try {
        const respuesta = await fetch(`${API_URL}/categories`);

        if (!respuesta.ok) {
            throw new Error("No se pudieron cargar las categorías");
        }

        const categorias = await respuesta.json();

        categorias.forEach(categoria => {
            const opcion = document.createElement("option");

            opcion.value = categoria;
            opcion.textContent = categoria;

            selector.appendChild(opcion);
        });

    } catch (error) {
        console.error(error);

        document.getElementById("categoryJoke").textContent =
            "No se pudieron cargar las categorías.";
    }
}

cargarCategorias();

// Buscar un chiste de la categoría seleccionada
document.getElementById("categoryBtn").addEventListener("click", () => {
    const categoria = document.getElementById("category").value;
    const resultado = document.getElementById("categoryJoke");

    if (!categoria) {
        resultado.textContent = "Primero selecciona una categoría.";
        return;
    }

    const url = `${API_URL}/random?category=${encodeURIComponent(categoria)}`;

    mostrarChiste(url, resultado);
});
