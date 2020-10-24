window.onload = function() {
	let staffRecommend1 = document.getElementsByClassName('recommend1');
	let staffRecommend2 = document.getElementsByClassName('recommend2');
	let btnPrev_sr = document.getElementById('prev_sr');
	let btnNext_sr = document.getElementById('next_sr');
	let btnPrev_new = document.getElementById('prev_new');
	let btnNext_new = document.getElementById('next_new');

	prev_sr();
	prev_new();

	function prev_sr() {
		for(let i = 6; i <= 11; i++) {
			staffRecommend1[i].style.display = 'none';
		}	
		for(let i = 0; i <= 5; i++) {
			staffRecommend1[i].style.display = 'block';
		}
	}

	function next_sr() {
		for(let i = 0; i <= 5; i++) {
			staffRecommend1[i].style.display = 'none';
		}	
		for(let i = 6; i <= 11; i++) {
			staffRecommend1[i].style.display = 'block';
		}	
	}

	function prev_new() {
		for(let i = 6; i <= 11; i++) {
			staffRecommend2[i].style.display = 'none';
		}	
		for(let i = 0; i <= 5; i++) {
			staffRecommend2[i].style.display = 'block';
		}
	}

	function next_new() {
		for(let i = 0; i <= 5; i++) {
			staffRecommend2[i].style.display = 'none';
		}	
		for(let i = 6; i <= 11; i++) {
			staffRecommend2[i].style.display = 'block';
		}	
	}
	
	btnPrev_sr.addEventListener('click', prev_sr, false);
	btnNext_sr.addEventListener('click', next_sr, false);
	btnPrev_new.addEventListener('click', prev_new, false);
	btnNext_new.addEventListener('click', next_new, false);
}