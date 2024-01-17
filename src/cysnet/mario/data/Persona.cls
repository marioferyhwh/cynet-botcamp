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
<ExtentSize>4</ExtentSize>
<IdLocation>^cysnet.mario.data.PersonaD</IdLocation>
<IndexLocation>^cysnet.mario.data.PersonaI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="apellidos">
<AverageFieldSize>11</AverageFieldSize>
<OutlierSelectivity>.999999:"de Prueba"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="codPostal">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="direccion">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="nombre">
<AverageFieldSize>10</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^cysnet.mario.data.PersonaS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
