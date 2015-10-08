class CreateTables < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string  :name, null: false
      t.text    :description
      t.boolean :checked, null: false
      t.timestamps
    end
    Task.reset_column_information
    tasks = [
      {checked: true  , name: 'Setting up our project'},
      {checked: true  , name: 'Setting up MithrilJS'},
      {checked: true  , name: 'Rendering a list of tasks'},
      {checked: true  , name: 'Adding tasks via a form with enter key'},
      {checked: false , name: 'Striking off tasks'},
      {checked: false , name: 'Setting up a skeleton rails app'},
      {checked: false , name: 'Rendering mithriljs server side'},
      {checked: false , name: 'Adding routes to mithriljs (show page)'},
      {checked: false , name: 'Create an api to show tasks'}
    ]
    tasks.each do |attrs|
      Task.create attrs
    end
  end
end
