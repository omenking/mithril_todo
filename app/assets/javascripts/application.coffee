app = { tasks: {index: {}} }

class app.tasks.index.controller
  constructor:->
    @$ =
      tasks:   @tasks
      keydown: @keydown
      form:    @form
    @$
  tasks: [
    {id: 1, checked: m.prop(false), name: 'Adding GA'},
    {id: 2, checked: m.prop(true), name: 'Install your js framework'},
    {id: 3, checked: m.prop(false), name: 'write code..'}
  ]
  form: (e)=>
    return false
  add_task:(name)=>
    model =
      name: name
    @$.tasks.push model
  keydown: (e)=>
    callback = (ev)=>
     if ev.keyCode == 13
       name = ev.target.value
       @add_task name
    e.addEventListener('keydown', callback, false);
    e.focus()
    return false

app.tasks.index.view = (ctrl)->
  content = []
  tasks   = []
  form = m 'form.task_form', onsubmit: ctrl.form,
    m "input[type='text']", placeholder: 'write a task...', config: ctrl.keydown
  for task in ctrl.tasks
    console.log 'testing', task.checked()
    class_name = if task.checked() then 'checked' else ''
    tasks.push m '.task', className: class_name,
      m "input[type='checkbox']", onchange: m.withAttr('checked',task.checked), checked: task.checked()
      m 'span.name', task.name
  content.push tasks
  content.push form
  m '.container',
    m '.wrapper',
      m '.header',
        m 'h1', 'Todo App',
      m '.content', content
      m '.footer'

m.mount document.body, app.tasks.index
