import "bootstrap";
import "../plugins/flatpickr"


import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#sweet-alert-demo', {
  title: "Thank you Captain!",
  text: "Wishing you a safe journey",
  icon: "success"
});
