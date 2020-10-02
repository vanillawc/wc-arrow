<script>

  import '@vanillawc/wc-arrow';

  let length = 400;
  let width = 125;
  let tailLength = 50;
  let tailWidth = 50;
  let rotation = 0;
  let contraction = 0;
  let strokeWidth = 5;
  let strokeColor = "#000000";
  let fillColor = "#ffffff";
  let bgColor = "#d3d3d3";// "lightgray";
  let peakCollapse = 0;
  let strokeLinejoin = "round";
  let peakLength = 0;
  let scaleFactor = 1;
  let unclosed = false;
  let styleHeight = 125;
  let styleWidth = 400;
  let elementRotation = 0;
  let absPeakLengthEnabled = false;
  let styleScale = 1;
  let borderRadius = 0;

  function saveToFile() {
    let arrow = document.getElementById("thearrow")
    arrow.arrow.style.fill = fillColor;
    arrow.arrow.style.strokeWidth = strokeWidth;
    arrow.arrow.style.strokeLinejoin = strokeLinejoin;
    arrow.arrow.style.stroke = strokeColor;
    arrow.arrow.style.strokeLinecap = "round";
    let blob = new Blob([arrow.innerHTML], {type: "image/svg+xml;charset=utf-8"})
    saveAs(blob, "arrow.svg")
  }

  function changeAngle(angle) {
    rotation = rotation + angle;
  }

  function checkBoxHandler(event) {
    let elem = document.getElementById("peak_length");
    if(event.target.checked === true) {
      elem.style.opacity = 1;
    } else {
      elem.style.opacity = 0.3;
    }
  }

  function preset_1() {
    length = 250;
    width = 150;
    tailLength = 50;
    tailWidth = 50;
    rotation = 0;
    contraction = 80;
    strokeWidth = 5;
    peakCollapse = 50;
    strokeLinejoin = "round";
    styleWidth = 250;
    styleHeight = 150;
    scaleFactor = 1;
    fillColor = "#ff0000";
    unclosed = false;
    borderRadius = 0;
    bgColor = "#ffffff";
    strokeLinejoin = "round";
  }

  function preset_2() {
    length = 250;
    width = 100;
    rotation = 180;
    tailLength = 70;
    tailWidth = 2;
    contraction = 0;
    strokeWidth = 7;
    peakCollapse = 100;
    strokeLinejoin = "round";
    styleWidth = 250;
    styleHeight = 100;
    scaleFactor = 1;
    fillColor = "#ff0000";
    unclosed = false;
    borderRadius = 0;
    bgColor = "#ffffff";
    strokeLinejoin = "round";
  }

  function preset_3() {
    length = 150;
    width = 150;
    rotation = 270;
    tailLength = 55;
    tailWidth = 40;
    contraction = 0;
    strokeWidth = 15;
    peakCollapse = 0;
    strokeLinejoin = "round";
    styleWidth = 150;
    styleHeight = 150;
    scaleFactor = 1;
    fillColor = "#00ccff";
    unclosed = false;
    borderRadius = 0;
    bgColor = "#ffffff";
    strokeLinejoin = "round";
  }

  function preset_4() {
    length = 300;
    width = 150;
    rotation = 0;
    tailLength = 55;
    tailWidth = 40;
    contraction = 0;
    strokeWidth = 5;
    peakCollapse = 100;
    strokeLinejoin = "round";
    styleWidth = 300;
    styleHeight = 150;
    scaleFactor = 1;
    fillColor = "none";
    unclosed = true;
    borderRadius = 0;
    bgColor = "#ffffff";
    strokeLinejoin = "round";
  }

  function preset_5() {
    length = 300;
    width = 150;
    rotation = 180;
    tailLength = 50;
    tailWidth = 100;
    contraction = 100;
    strokeWidth = 5;
    peakCollapse = 0;
    strokeLinejoin = "round";
    styleWidth = 300;
    styleHeight = 150;
    scaleFactor = 1;
    fillColor = "#000000";
    unclosed = false;
    borderRadius = 0;
    bgColor = "#ffffff";
    strokeLinejoin = "round";
  }

  function preset_6() {
    length = 300;
    width = 150;
    rotation = 0;
    tailLength = 80;
    tailWidth = 100;
    contraction = 0;
    strokeWidth = 0;
    peakCollapse = 0;
    strokeLinejoin = "round";
    styleWidth = 300;
    styleHeight = 150;
    scaleFactor = 1;
    fillColor = "#00ff00";
    unclosed = false;
    borderRadius = 0;
    bgColor = "#ffffff";
    strokeLinejoin = "round";
  }

  function preset_7() {
    length = 200;
    width = 200;
    rotation = 45;
    tailLength = 50;
    tailWidth = 50;
    contraction = 0;
    strokeWidth = 0;
    peakCollapse = 0;
    strokeLinejoin = "round";
    styleWidth = 200;
    styleHeight = 200;
    scaleFactor = 1;
    fillColor = "#ff0000";
    unclosed = false;
    borderRadius = 100;
    bgColor = "#d3d3d3";
    strokeLinejoin = "round";
  }

  function preset_8() {
    length = 350;
    width = 180;
    rotation = 315;
    tailLength = 6;
    tailWidth = 0;
    contraction = 0;
    strokeWidth = 0;
    peakCollapse = 0;
    strokeLinejoin = "round";
    styleWidth = 200;
    styleHeight = 200;
    scaleFactor = 0.5;
    fillColor = "#00ff00";
    unclosed = false;
    borderRadius = 100;
    bgColor = "#d3d3d3";
    strokeLinejoin = "round";
  }

  function preset_9() {
    length = 350;
    width = 180;
    rotation = 90;
    tailLength = 6;
    tailWidth = 0;
    contraction = 0;
    strokeWidth = 0;
    peakCollapse = 0;
    strokeLinejoin = "round";
    styleWidth = 200;
    styleHeight = 200;
    scaleFactor = 0.5;
    fillColor = "#000000";
    unclosed = false;
    borderRadius = 100;
    bgColor = "#ffffff";
    strokeLinejoin = "round";
  }

  function preset_10() {
    length = 350;
    width = 140;
    rotation = 0;
    tailLength = 50;
    tailWidth = 50;
    contraction = 0;
    strokeWidth = 22;
    peakCollapse = 0;
    strokeLinejoin = "round";
    styleWidth = 350;
    styleHeight = 140;
    scaleFactor = 1;
    fillColor = "#ffffff";
    unclosed = false;
    borderRadius = 100;
    bgColor = "#ffffff";
    strokeLinejoin = "bevel";
  }

  function reset() {
    length = 400;
    width = 125;
    tailLength = 50;
    tailWidth = 50;
    rotation = 0;
    contraction = 0;
    strokeWidth = 5;
    strokeColor = "#000000";
    fillColor = "#ffffff";
    bgColor = "#d3d3d3";// "lightgray";
    peakCollapse = 0;
    strokeLinejoin = "round";
    peakLength = 0;
    scaleFactor = 1;
    unclosed = false;
    styleHeight = 125;
    styleWidth = 400;
    elementRotation = 0;
    absPeakLengthEnabled = false;
    styleScale = 1;
    borderRadius = 0;
  }

</script>

<style>

  main {
    font-family: Arial, Helvetica, sans-serif;
    display:flex;
    flex-direction: column;
    align-items: center;
  }

  .html_example {
    font-family: "Courier New", Courier, monospace;
    font-stretch: extra-expanded;
    display:inline-block;
    background-color: #d8edf3;
    padding: 20px;
    margin-top: 20px;
  }

  .bold_text {
  font-weight: bold;
  margin-bottom: 5px;
  }

  wc-arrow {
    background-color: lightgray;
    stroke-linejoin: round;
    /*stroke-dasharray: 5%;*/
    font-size: 20px;
    color: red;
    /* tämä aiheuttaa vasemman reunan reunimmaisen viivan puuttumisen 1px:n strokeWidthillä:  */
    stroke-linecap: round;
    /*transform:rotate(90deg);*/
    display: inline-flex;
    margin: 50px;
  }
  #container {
    border-radius: 50%;
    background-color: lightgray;
    height: 135px;
    width: 135px;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .controls_container {
    display: flex;
    flex-direction: row;
    justify-content: center;
  }
  .controls_half {
    margin: 10px;
  }
  .control {
    display: flex;
    align-items: center;
    justify-content: space-between;
    background-color: #ebf1f9;
    padding: 5px;
    box-shadow: 4px 4px 4px lightgrey;
  }
  .control_style {
    background-color: #ebfff9;
  }
  .together {
    display: flex;
    align-items: center;
  }
  .control_title {
    font-size: 18px;
    font-weight: bold;
    justify-content: center;
  }
  #peak_length {
    opacity: 0.3;
  }
  button {
    display: block;
    margin: 10px;
  }
  .custom_container, #save_button_container{
    display:flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    margin-bottom: 20px;
  }
  #save_button{
    margin-bottom: 5px;
  }
  #save_note{
    font-size: 14px;
  }
  #title {
    background-color: #ebf6f9;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 5px;
    box-shadow: 4px 4px 4px lightgrey;
    margin-bottom: 15px;
    width: 700px;
    font-size: 20px;
    font-weight: bold;
  }
  #description {
    font-size: 18px;
    font-style: italic;
    margin: 12px;
    width: 700px;
    display: flex;
    align-items: center;
    justify-content: center;
  }
  #footer {
    margin: 30px;
    margin-top:50px;
  }
</style>

<main>
  <div id="description">
    wc-arrow web component is available from&nbsp;<a href="https://github.com/vanillawc/wc-arrow" target="_blank">GitHub</a>&nbsp;and&nbsp;<a href="https://www.npmjs.com/package/@vanillawc/wc-arrow" target="_blank"> NPM registry</a>
  </div>
  <div id="title">
    wc-arrow demo
  </div>
  <div class="controls_container">
    <div class="controls_half">

      <div class="control control_title">Custom attributes</div>

      <div class="control">
        l (arrow length)
        <input type="range" min="0" max="1000" bind:value={length} />
        <div class="together">
          <input type="text" bind:value={length} size="1" />
          px
        </div>
      </div>

      <div class="control">
        w (arrow width)
        <input type="range" min="0" max="1000" bind:value={width} />
        <div class="together">
          <input type="text" bind:value={width} size="1" />
          px
        </div>
      </div>

      <div class="control">
        tail-l (tail length)
        <input type="range" min="0" max="100" bind:value={tailLength} />
        <div class="together">
          <input type="text" bind:value={tailLength} size="1" />
          %
        </div>
      </div>

      <div class="control">
        tail-w (tail width)
        <input type="range" min="0" max="100" bind:value={tailWidth} />
        <div class="together">
          <input type="text" bind:value={tailWidth} size="1" />
          %
        </div>
      </div>

      <div class="control">
        rot (rotation)
        <input type="range" min=-360 max=360 bind:value={rotation} />
        <input type="text" bind:value={rotation} size="1" />
      </div>

      <div class="control">
        <input type="checkbox" on:change={checkBoxHandler} bind:checked={absPeakLengthEnabled} />
        <div class="together" id="peak_length">
          peak-l (peak length)
          <input type="range" min="0" max="200" bind:value={peakLength} />
          <div class="together">
            <input type="text" bind:value={peakLength} size="1" />
            px
          </div>
        </div>
      </div>

      <div class="control">
        tail-cont (tail contraction)
        <input type="range" min="0" max="100" bind:value={contraction} />
        <div class="together">
          <input type="text" bind:value={contraction} size="1" />
          %
        </div>
      </div>

      <div class="control">
        peak-coll (peak collapse)
        <input type="range" min="0" max="100" bind:value={peakCollapse} />
        <div class="together">
          <input type="text" bind:value={peakCollapse} size="1" />
          %
        </div>
      </div>

      <div class="control">
        scale
        <input type="range" min="0" max="2" step=0.01 bind:value={scaleFactor} />
        <input type="text" bind:value={scaleFactor} size="1" />
      </div>

      <div class="control">
        <div class="together">
          <input type="checkbox" bind:checked={unclosed} />
          unclosed
        </div>
      </div>

    </div>
    <div class="controls_half">
      <div class="control control_style control_title">Element style</div>

      <div class="control control_style">
        stroke-width
        <input type="range" min="0" max="100" bind:value={strokeWidth} />
        <input type="text" bind:value={strokeWidth} size="1" />
      </div>

      <div class="control control_style">
        stroke (stroke color)
        <input type="color" bind:value={strokeColor} />
      </div>

      <div class="control control_style">
        fill (fill color)
        <input type="color" bind:value={fillColor} />
      </div>

      <div class="control control_style">
        background-color
        <input type="color" bind:value={bgColor} />
      </div>

      <div class="control control_style">
        stroke-linejoin
        <select bind:value={strokeLinejoin}>
          <option value="arcs">arcs</option>
          <option value="bevel">bevel</option>
          <option value="miter">miter</option>
          <option value="miter-clip">miter-clip</option>
          <option value="round">round</option>
        </select>
      </div>

      <div class="control control_style">
        border-radius
        <input type="range" min=0 max=100 bind:value={borderRadius} />
        <input type="text" bind:value={borderRadius} size="1" />
      </div>

      <div class="control control_style">
        transform: rotate
        <input type="range" min=0 max=360 bind:value={elementRotation} />
        <input type="text" bind:value={elementRotation} size="1" />
      </div>

      <div class="control control_style">
        transform: scale
        <input type="range" step=0.01 min=0 max=2 bind:value={styleScale} />
        <input type="text" bind:value={styleScale} size="1" />
      </div>

      <div class="control control_style">
        height
        <input type="range" min="0" max="1000" bind:value={styleHeight} />
        <input type="text" bind:value={styleHeight} size="1" />
      </div>

      <div class="control control_style">
        width
        <input type="range" min="0" max="1000" bind:value={styleWidth} />
        <input type="text" bind:value={styleWidth} size="1" />
      </div>

    </div>
    <div class="controls_half">
      <button type="button" on:click={preset_1}>Preset 1</button>
      <button type="button" on:click={preset_2}>Preset 2</button>
      <button type="button" on:click={preset_3}>Preset 3</button>
      <button type="button" on:click={preset_4}>Preset 4</button>
      <button type="button" on:click={preset_5}>Preset 5</button>
      <button type="button" on:click={preset_6}>Preset 6</button>
      <button type="button" on:click={preset_7}>Preset 7</button>
      <button type="button" on:click={preset_8}>Preset 8</button>
      <button type="button" on:click={preset_9}>Preset 9</button>
      <button type="button" on:click={preset_10}>Preset 10</button>
      <button type="button" on:click={reset}>Reset</button>
    </div>
  </div>
  <div class="custom_container">
    <wc-arrow
      id="thearrow"
      l={length}
      w={width}
      tail-l={tailLength}
      tail-w={tailWidth}
      rot={rotation}
      tail-cont={contraction}
      peak-coll={peakCollapse}
      peak-l={absPeakLengthEnabled ? peakLength : ''}
      {unclosed}
      scale={scaleFactor}
      style="stroke-width: {strokeWidth}px; stroke-linejoin: {strokeLinejoin}; stroke: {strokeColor}; fill: {fillColor};
      height: {styleHeight}px; width: {styleWidth}px; border-radius: {borderRadius}%; transform: rotate({elementRotation}deg); transform:scale({styleScale},{styleScale}); background-color:{bgColor};">
    </wc-arrow>

    <div id="save_button_container">
      <button id="save_button" type="button" on:click={saveToFile}>Save to file as an SVG image</button>
      <div id="save_note">
      (Saves only the arrow and ignores rotation)
      </div>
    </div>

    <div class="html_example">
    <div class="bold_text">HTML tag with all custom attributes:</div>
      {`<wc-arrow l=${length} w=${width} tail-l=${tailLength} tail-w=${tailWidth} rot=${rotation} tail-cont=${contraction}`}
    <br>
      {`peak-coll=${peakCollapse} peak-l=${absPeakLengthEnabled ? peakLength : '""'} unclosed=${unclosed} scale=${scaleFactor}> </wc-arrow>`}
    </div>
  </div>

  <div id="footer">
    this page was made with &heartsuit; and  <a href="https://svelte.dev/" target="_blank">Svelte</a>
  </div>
</main>
