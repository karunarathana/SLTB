
function showAlert(params) {
    sessionStorage.setItem('SELECTBUS', params);
    // Redirect to another page
    window.location.href = '/pages/Book.cshtml';
}