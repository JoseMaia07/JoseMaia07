const songs = [
    "Sneaky Driver.mp3",
    "Pharrell Williams - Happy.mp3",
    "Imagine Dragons x J.I.D - Enemy (from the series Arcane League of Legends).mp3",
    "Enrique Iglesias - SUBEME LA RADIO ft. Descemer Bueno_ Zion _ Lennox.mp3",
    "MUNDO ANIMAL Mamonas Assassinas.mp3",
    "Kung Fu Fighting.mp3",
  ];

  const player = document.getElementById("player");

  
  const createSongList = () => {
    const list = document.createElement("ol");
    for (let i = 0; i < songs.length; i++) {
      const item = document.createElement("li");
      item.appendChild(document.createTextNode(songs[i].slice(0,-4)));
    list.appendChild(item);
    }
    return list;
  };
  
  const songList = document.getElementById("songList");
  songList.appendChild(createSongList());
  const links = document.querySelectorAll("li");
  for (const link of links) {
    link.addEventListener("click", setSong);
  }
  
  function setSong(e) {
    document.querySelector("#headphones").classList.remove("pulse");
  
    const source = document.getElementById("source");
    source.src = "songs/" + e.target.innerText + ".mp3";
    document.getElementById(
      "currentSong"
    ).innerText = `Now Playing:  ${e.target.innerText}`;
  
    player.load();
    player.play();
  
    document.querySelector("#headphones").classList.add("pulse");
  }
  
  function playAudio() {
    if (player.readyState) {
      player.play();
    }
  }
  
  function pauseAudio() {
    player.pause();
  }
  
  const slider = document.getElementById("volumeSlider");
  slider.oninput = function (e) {
    const volume = e.target.value;
    player.volume = volume;
  };
  
  function updateProgress() {
    if (player.currentTime > 0) {
      const progressBar = document.getElementById("progress");
      progressBar.value = (player.currentTime / player.duration) * 100;
    }
  }

  const progressBar = document.getElementById("progress");
  progressBar.addEventListener("click", (e) => {
  const clickedTime = (e.offsetX / progressBar.clientWidth) * player.duration;
  player.currentTime = clickedTime;
  updateProgress();
});

progressBar = document.getElementById("progress");
let isDragging = false;

progressBar.addEventListener("mousedown", () => {
  isDragging = true;
});

document.addEventListener("mousemove", (e) => {
  if (isDragging) {
    const clickedTime = (e.offsetX / progressBar.clientWidth) * player.duration;
    player.currentTime = clickedTime;
    updateProgress();
  }
});

document.addEventListener("mouseup", () => {
  isDragging = false;
});