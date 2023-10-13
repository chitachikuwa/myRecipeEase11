window.addEventListener('load' , function(){
    
    //食材追加
    const ingredientButton = document.getElementById('ingredient-button');
    const ingredientsList = document.getElementById('ingredients-list');
    
    ingredientButton.addEventListener('click', function() {
        const newIngredient = document.createElement('li');
        newIngredient.innerHTML = '<input type="text" name="ingredients[]" class="ingredients-input">';
        ingredientsList.appendChild(newIngredient);
    });


    //食材追加
    const seasoningButton = document.getElementById('seasoning-button');
    const seasoningsList = document.getElementById('seasonings-list');

    seasoningButton.addEventListener('click', function() {
        const newSeasoning = document.createElement('li');
        newSeasoning.innerHTML = '<input type="text" name="seasonings[]" class="seasonings-input">';
        seasoningsList.appendChild(newSeasoning);
    });


    //作り方追加
    const stepButton = document.getElementById('step-button');
    const stepsList = document.getElementById('steps-list');

    stepButton.addEventListener('click', function() {
        const newStep = document.createElement('li');
        newStep.innerHTML = '<input type="text" name="steps[]" class="steps-input">';
        stepsList.appendChild(newStep);
    });
});