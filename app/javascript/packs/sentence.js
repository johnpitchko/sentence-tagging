document.onmouseup = () => {
  // Capture the highlighted text from the page.
  selection = document.getSelection();
  selected_words = selection.toString();

  // Insert that text into the Selected Words text field in the form.
  text_field = document.querySelector('#entity_text');
  text_field.value = selected_words;

  // Capture the sentence_id in the parent element of the selected text element
  // and insert hidden field in the form.
  selection_node = selection.anchorNode;
  sentence_form = document.querySelector('#new_entity_form');
  hidden_field = document.getElementsByName('entity[sentence_id]')[0];
  hidden_field.value = selection_node.parentElement.id;
};
