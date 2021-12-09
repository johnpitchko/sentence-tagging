document.onmouseup = () => {
  selected_words = document.getSelection().toString();
  text_field = document.querySelector('#entity_text');
  text_field.value = selected_words;
};
