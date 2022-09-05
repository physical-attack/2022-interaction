
function setup() {
    initializeFields();
    createCanvas(500, 500);
}

function draw() {
    background(color(0xA3, 0xB2, 0xC1));
    fill(color(0xC3, 0xB2, 0xA1));
    rect(100, 100, 300, 300);
    fill(color(0x53, 0x82, 0x51));
    rect(mouseX, mouseY, 100, 100);
}

function initializeFields() {
}
