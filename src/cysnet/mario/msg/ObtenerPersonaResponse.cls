Class cysnet.mario.msg.ObtenerPersonaResponse Extends Ens.Response
{

Property nombre As %String;

Property apellidos As %String;

Property direccion As %String;

Property codPostal As %Integer;

Property mensaje As %String(MAXLEN = 255);

Storage Default
{
<Data name="ObtenerPersonaResponseDefaultData">
<Subscript>"ObtenerPersonaResponse"</Subscript>
<Value name="1">
<Value>nombre</Value>
</Value>
<Value name="2">
<Value>apellidos</Value>
</Value>
<Value name="3">
<Value>direccion</Value>
</Value>
<Value name="4">
<Value>codPostal</Value>
</Value>
<Value name="5">
<Value>mensaje</Value>
</Value>
</Data>
<DefaultData>ObtenerPersonaResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
