/// 
Class cysnet.mario.bp.MiProceso Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='cysnet.mario.msg.ObtenerPersonaRequest' response='cysnet.mario.msg.ObtenerPersonaResponse' height='2000' width='2000' >
<sequence xend='200' yend='600' >
<if name='ID &gt; 0' condition='request.idPersona &gt; 0' xpos='200' ypos='250' xend='200' yend='500' >
<true>
<call name=' Obtener Persona' target='DBCache' async='0' xpos='470' ypos='400' >
<request type='cysnet.mario.msg.ObtenerPersonaRequest' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='cysnet.mario.msg.ObtenerPersonaResponse' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</true>
<false>
<assign name="asingar error" property="response.mensaje" value="&quot;Este es el mensaje de error&quot;" action="set" xpos='200' ypos='400' />
</false>
</if>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
