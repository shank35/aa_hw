document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!

  // get references to DOM elements
  const addRestaurantForm = document.querySelector('#add-restaurant-form');
  const newRestaurantInput = document.querySelector('#new-restaurant');
  const restaurantList = document.querySelector('#restaurants');

  // add event listener to form submit button
  addRestaurantForm.addEventListener('submit', function(event) {
    event.preventDefault(); // prevent default form submission behavior

    // get the user input
    const newRestaurant = newRestaurantInput.value.trim();

    // clear the input field
    newRestaurantInput.value = '';

    // create a new list item and append it to the list
    const newRestaurantItem = document.createElement('li');
    newRestaurantItem.textContent = newRestaurant;
    restaurantList.appendChild(newRestaurantItem);
  });


  // adding new photos

  // --- your code here!

  // Toggle photo form visibility
  const photoFormContainer = document.querySelector('.photo-form-container');
  const photoShowButton = document.querySelector('.photo-show-button');

  photoShowButton.addEventListener('click', function() {
    photoFormContainer.classList.toggle('hidden');
  });

  // Add new photo to list
  const dogPhotosList = document.querySelector('.dog-photos');
  const photoUrlInput = document.querySelector('.photo-url-input');
  const photoUrlSubmit = document.querySelector('.photo-url-submit');

  photoUrlSubmit.addEventListener('click', function(event) {
    event.preventDefault();

    const newPhoto = document.createElement('img');
    newPhoto.src = photoUrlInput.value;
    newPhoto.alt = 'Cute puppy photo';

    const newPhotoListItem = document.createElement('li');
    newPhotoListItem.appendChild(newPhoto);

    dogPhotosList.appendChild(newPhotoListItem);

    photoUrlInput.value = '';
  });


});
