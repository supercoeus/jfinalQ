<#include "/WEB-INF/view/inc.ftl"/>

<@bslist qpage=qpage>
	<@bstable>
		<thead>
			<tr>
		        <th><input type="checkbox" class="allcheck"/></th>
				<th>角色名称</th>
				<th>创建时间</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		    <#list qpage.list?if_exists as row>
			    <tr data="id:${row.id};">
			        <td><input type="checkbox" class="onecheck"/></td>
				    <td>${(row.ucenter_role_name)!}</td>				    
					<td>${(row.cdate)!}</td>				    
					<td>
			        	<@bsbutton size='xs' icon='pencil' 	title='编辑'		class='editbtn'/>
			        	<@bsbutton size='xs' icon='remove' 	title='删除' 	class='delbtn'/>
			        	<@bsbutton size='xs' icon='user'	title='设置用户'	class='roleadduserbtn'/>
			        	<@bsbutton size='xs' icon='tasks' 	title='设置权限'	class='roleaddurlbtn'/>
			        </td>
			    </tr>
		    </#list>
		</tbody>
	</@bstable>
</@bslist>
<script>web.role.init();</script>