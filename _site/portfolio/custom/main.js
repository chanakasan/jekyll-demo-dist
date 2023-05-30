function toggleDarkMode() {
  console.log('toggleDarkMode')
  const root = window.document.documentElement
  root.classList.toggle('dark')
  // const list = root.classList
  // console.log(list)
  // if (list.includes('dark')) {
  //   root.classList.remove('dark')
  // } else {
  //   root.classList.add('dark')
  // }
  return false
}

window.toggleDarkMode = toggleDarkMode