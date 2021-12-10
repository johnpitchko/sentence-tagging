document.onmouseup = () => {
  selection = document.getSelection();
  selected_words = selection.toString();

  selection_node = selection.anchorNode;

  text_field = document.querySelector('#entity_text');
  text_field.value = selected_words;

  sentence_form = document.querySelector('#new_entity_form');
  console.log(sentence_form);
  hidden_field = document.getElementsByName('entity[sentence_id]')[0];
  hidden_field.value = selection_node.parentElement.id;
  console.log(hidden_field);
};
