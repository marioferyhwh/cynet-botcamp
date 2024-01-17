Class cysnet.mario.MiProduccion Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="cysnet.mario.MiProduccion" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="MiServicio" Category="" ClassName="cysnet.mario.ws.MiServicio" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="DBCache" Category="" ClassName="cysnet.mario.bo.DBCache" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="MiProceso" Category="" ClassName="cysnet.mario.bp.MiProceso" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
</Production>
}

}
