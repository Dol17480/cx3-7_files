require_relative('models/wizard')
require_relative('models/magical_item')

require( 'pry-byebug' )

MagicalItem.delete_all()
Wizard.delete_all()

gandalf = Wizard.new( {'name' => "Gandalf" } )
gandalf.save()
merlin = Wizard.new( {'name' => "Merlin" } )
merlin.save()
saruman = Wizard.new( {'name' => "Saruman" } )
saruman.save()

magical_item1 = MagicalItem.new( {'name' => "Staff", 'wizard_id' => gandalf.id })
magical_item1.save()
magical_item2 = MagicalItem.new( {'name' => "Excalibur", 'wizard_id' => merlin.id })
magical_item2.save()
magical_item3 = MagicalItem.new( {'name' => "Palantir", 'wizard_id' => saruman.id })
magical_item3.save()

binding.pry
nil