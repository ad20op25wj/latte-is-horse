var isNight = true;

function setDayMode() {
  if (isNight) {
    isNight = false;

    document.getElementsByTagName('header')[0].style.backgroundColor = 'chocolate';

    if (document.getElementById('titleImg') !== null) {
    	document.getElementById('titleImg').src = '../image/asleep_owl.png';
    }
    
    if (document.getElementById('serviceName').innerHTML === '올빼미들의 밤') {
      document.getElementById('serviceName').innerHTML = '올빼미들의 낮';
    }
    
    if (document.getElementById('serviceSlogan') !== null) {
      document.getElementById('serviceSlogan').innerHTML = '남들 눈 떠 있을 땐 자야지... Zzz';
    }

    document.getElementById('mySidenav').style.backgroundColor = 'lightsalmon';

    var elems = document.getElementsByClassName('item');
    if (elems !== undefined) {
      for (var i=0; i<elems.length; i++)  {
        elems[i].style.borderColor = 'chocolate';
      }
    }
    
    elems = document.getElementsByClassName('card');
    if (elems !== undefined) {
      for (var i=0; i<elems.length; i++)  {
        elems[i].style.borderColor = 'chocolate';
      }
    }
  }
}

function setNightMode() {
  if (!isNight) {
    isNight = true;

    document.getElementsByTagName('header')[0].style.backgroundColor = 'navy';

    if (document.getElementById('titleImg') !== null) {
    	document.getElementById('titleImg').src = '../image/awake_owl.png';
    }
    
    if (document.getElementById('serviceName').innerHTML === '올빼미들의 낮') {
      document.getElementById('serviceName').innerHTML = '올빼미들의 밤';
    }
    
    if (document.getElementById('serviceSlogan') !== null) {
      document.getElementById('serviceSlogan').innerHTML = '남들 다 잘 때도 놀고, 일하고, 공부해야 하니까';
    }

    document.getElementById('mySidenav').style.backgroundColor = 'lightskyblue';

    var elems = document.getElementsByClassName('item');
    if (elems !== undefined) {
      for (var i=0; i<elems.length; i++)  {
        elems[i].style.borderColor = 'navy';
      }
    }
    
    elems = document.getElementsByClassName('card');
    if (elems !== undefined) {
      for (var i=0; i<elems.length; i++)  {
        elems[i].style.borderColor = 'navy';
      }
    }
  }
}

function openNav() {
  document.getElementById('mySidenav').style.width = '250px';
}

function closeNav() {
  document.getElementById('mySidenav').style.width = '0';
}