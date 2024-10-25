bool firstAndLastName(String firstname) {
  if (firstname.isEmpty || firstname.length < 3) {
    return false;
  } else {
    return true;
  }
}
