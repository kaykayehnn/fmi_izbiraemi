let wheelSpinning = false;
let fillStyles = [
  "#ee1c24",
  "#3cb878",
  "#f6989d",
  "#00aef0",
  "#f26522",
  "#e70697",
  "#fff200",
  "#f6989d",
  "#ee1c24",
  "#3cb878",
  "#f26522",
];
let segments = window.izbiraemi.map((izb, ix) => ({
  index: ix,
  fillStyle: fillStyles[ix % fillStyles.length],
  text: izb.name.slice(0, 9),
}));

let theWheel = new Winwheel({
  outerRadius: 212, // Set outer radius so wheel fits inside the background.
  innerRadius: 75, // Make wheel hollow so segments dont go all way to center.
  textFontSize: 14, // Set default font size for the segments.
  textOrientation: "vertical", // Make text vertial so goes down from the outside of wheel.
  textAlignment: "outer", // Align text to outside of wheel.
  numSegments: segments.length, // Specify number of segments.
  // Define segments including colour and text.
  segments: segments,
  // Specify the animation to use.
  animation: {
    type: "spinToStop",
    duration: 10,
    spins: 3,
    callbackFinished: alertPrize, // Function to call whent the spinning has stopped.
    callbackSound: playSound, // Called when the tick sound is to be played.
    soundTrigger: "pin", // Specify pins are to trigger the sound.
  },
  // Turn pins on.
  pins: {
    number: 24,
    fillStyle: "silver",
    outerRadius: 4,
  },
});

// Loads the tick audio sound in to an audio object.
let audio = new Audio("audio/tick.mp3");

// This function is called when the sound is to be played.
function playSound() {
  // Stop and rewind the sound if it already happens to be playing.
  audio.pause();
  audio.currentTime = 0;

  // Play the sound.
  audio.play();
}

// Called when the animation has finished.
function alertPrize(indicatedSegment) {
  // Display different message if win/lose/backrupt.
  console.log(indicatedSegment.index);

  let discipline = window.izbiraemi[indicatedSegment.index];

  alert(`Поздравления! Избрахте "${discipline.name}"!\n\nПреподаватели: ${discipline.teacher}`);

  document.getElementById("discipline_field").value = indicatedSegment.index;
  document.getElementById("information").textContent = `Избрахте "${discipline.name}"`;

  wheelSpinning = false;
}

function startSpin() {
  // Ensure that spinning can't be clicked again while already running.
  if (wheelSpinning == false) {
    resetWheel();
    theWheel.animation.spins = 3;

    // Disable the spin button so can't click again while wheel is spinning.
    // document.getElementById("spin_button").disabled = true;

    // Begin the spin animation by calling startAnimation on the wheel object.
    theWheel.startAnimation();

    // Set to true so that power can't be changed and spin button re-enabled during
    // the current animation. The user will have to reset before spinning again.
    wheelSpinning = true;
  }
}

// -------------------------------------------------------
// Function for reset button.
// -------------------------------------------------------
function resetWheel() {
  theWheel.stopAnimation(false); // Stop the animation, false as param so does not call callback function.
  theWheel.rotationAngle = 0; // Re-set the wheel angle to 0 degrees.
  theWheel.draw(); // Call draw to render changes to the wheel.

  document.getElementById("spin_button").disabled = false;

  wheelSpinning = false; // Reset to false to power buttons and spin can be clicked again.
}
