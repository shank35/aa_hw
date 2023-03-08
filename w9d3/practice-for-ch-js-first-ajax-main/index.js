console.log("Hello from the console!");

// Your code here
fetch("https://api.openweathermap.org/data/2.5/weather?q=London,UK&appid=bcb83c4b54aee8418983c2aff3073b3b")
  .then(response => {
    if (!response.ok) {
      throw Error(response.statusText);
    }
    return response.json();
  })
  .then(data => {
    console.log("Success!", data);
  })
  .catch(error => {
    console.log("Failure!", error);
  });

console.log("The AJAX request has been dispatched.");