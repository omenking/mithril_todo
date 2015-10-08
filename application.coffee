app =
  controller: ->
   attrs =
    form: (e)->
      e.preventDefault()
      return false
    keydown: (e)->
     callback = (ev)->
      if ev.keyCode == 13
        e.preventDefault()
        console.log 'enter key'
     e.addEventListener('keydown', callback, false);
    return false
    tasks: [
      {id: 1, name: 'Adding GA'},
      {id: 2, name: 'Install your js framework'},
      {id: 3, name: 'write code..'}
    ]
  view: (ctrl)->
    content = []
    tasks   = []
    console.log ctrl.form
    form = m 'form.task_form', onsubmit: ctrl.form,
      m "input[type='text']", placeholder: 'write a task...', config: ctrl.keydown
    for task in ctrl.tasks
      tasks.push m '.task',
        m "input[type='checkbox']"
        m 'span.name', task.name
    content.push tasks
    content.push form
    m '.container',
      m '.wrapper',
        m '.header',
          m 'h1', 'Todo App',
        m '.content', content
        m '.footer'
m.mount document.body, app
