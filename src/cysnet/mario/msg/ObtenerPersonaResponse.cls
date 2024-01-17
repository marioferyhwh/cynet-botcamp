Class cysnet.mario.msg.ObtenerPersonaResponse Extends Ens.Response
{

Property nombre As %String;

Property apellidos As %String;

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
</Data>
<DefaultData>ObtenerPersonaResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
