function checkSize() {
    const fileInputElement = document.getElementById('file');

	fileInputElement.addEventListener('change', function() {
		// Get the file object
		const file = this.files[0];
	  
		// Get the file size in bytes
		const fileSize = file.size;

		const fileSizeInMB = fileSize / (1024 * 1024);

		if(fileSizeInMB > 1023){
			alert("Choose a file size lessthan 1MB");
		}
	
	});
}