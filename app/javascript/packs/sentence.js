document.onmouseup = () => {
  selected_words = document.getSelection().toString();
  text_field = document.querySelector('#entity_selected_words');
  text_field.value = selected_words;
};