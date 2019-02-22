document.addEventListener('DOMContentLoaded', () =>
  requestAnimationFrame(updateTime)
)

function updateTime() {
  document.documentElement.style.setProperty('--timer-day', "'" + moment().format("dddd") + "'");
  document.documentElement.style.setProperty('--timer-hours', "'" + moment().format("h") + "'");
  document.documentElement.style.setProperty('--timer-minutes', "'" + moment().format("mm") + "'");
  document.documentElement.style.setProperty('--timer-seconds', "'" + moment().format("ss") + "'");
  document.documentElement.style.setProperty('--timer-ampm', "'" + moment().format("A") + "'");
  requestAnimationFrame(updateTime);
}