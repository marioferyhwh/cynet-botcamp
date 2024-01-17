Class cysnet.mario.data.Persona Extends %Persistent
{

Property nombre As %String;

Property apellidos As %String;

Property direccion As %String;

Property codPostal As %Integer;

Storage Default
{
<Data name="PersonaDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>nombre</Value>
</Value>
<Value name="3">
<Value>apellidos</Value>
</Value>
<Value name="4">
<Value>direccion</Value>
</Value>
<Value name="5">
<Value>codPostal</Value>
</Value>
</Data>
<DataLocation>^cysnet.mario.data.PersonaD</DataLocation>
<DefaultData>PersonaDefaultData</DefaultData>
<IdLocation>^cysnet.mario.data.PersonaD</IdLocation>
<IndexLocation>^cysnet.mario.data.PersonaI</IndexLocation>
<StreamLocation>^cysnet.mario.data.PersonaS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
