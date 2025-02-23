<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

			<div class="col-9">
				<div class="scroll-table">
					<table class="table text-center table-dark table-striped">
						<thead class="thead-light">
							<tr>
								<th>#</th>
								<th><s:message code="record.type"/></th>
								<th><s:message code="record.reason"/></th>
								<th><s:message code="record.date"/></th>
								<th><s:message code="record.staff.name"/></th>
								<th colspan="2"><s:message code="global.option"/></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach begin="0" end="${listRecord.size()}" varStatus="stt"
								var="record" items="${listRecord}">

								<tr>
									<td>${stt.index+1}</td>
									<td>${record.type?"Khen Thưởng (Prise)":"Kỷ Luật (Discipline)"}</td>
									<td>${record.reason}</td>
									<td>
										<fmt:formatDate value="${record.date}"/>
									</td>
									<td>${record.staff.name}</td>
									<td>
										<button class="btn btn-primary" onclick="window.location.href='admin/record/update.htm?id=${record.id}'">
											<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
											<s:message code="global.button.update"/>
										</button>
									</td>
									<td>
										<button class="btn btn-danger"
											onclick="deleteRecord('${record.id}')">
											<i class="fa fa-trash-o" aria-hidden="true"></i> <s:message code="global.button.delete"/>
										</button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<button onclick="window.location.href='admin/record/insert.htm'"
					type="button" class="btn btn-success m-3 float-right">
					<i class="fa fa-plus" aria-hidden="true"></i> <s:message code="record.insert"/>
				</button>
			</div>
	
<script>
function deleteRecord(id) {
	Swal.fire({
		  title: 'Are you sure?',
		  text: "Are you sure to detele '"+id+"'!",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Yes, delete it!'
		}).then((result) => {
        if (result.value) {
        	window.location.href = "admin/record/delete.htm?id="+id;
        } else if(result.dismiss === Swal.DismissReason.cancel){
        	Swal.fire(
        		      'Cancelled',
        		      'This record is safe :)',
        		      'error'
        		    )
        }
    });
}
</script>
