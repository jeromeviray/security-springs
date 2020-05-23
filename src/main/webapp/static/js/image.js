	var imagefile = document.getElementById("file");
	var containers = document.getElementById("image-view");
	var previewimages = containers.querySelector(".image-preview");
	var previewDefaultText = containers.querySelector(".preview-text");

		imagefile.addEventListener("change", function(){
			var file = this.files[0];
			if (file) {
				var readerImage = new FileReader();

				 previewDefaultText.style.display = "none";
				 previewimages.style.display = "block";

				 readerImage.addEventListener("load", function(){
				 	console.log(this);
				 	previewimages.setAttribute("src", this.result);

				 });

				 readerImage.readAsDataURL(file);
			}else {
				previewDefaultText.style.display = null;
				 previewimages.style.display = null;

				previewimages.setAttribute("src", " ");
			}
		});