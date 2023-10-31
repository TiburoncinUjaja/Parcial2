<%@ include file="common/header.jsp"%>
<%@ include file="common/navigation.jsp"%>

<div class="container">
    <div>
        <!-- Tu vista en list-todos.jsp o donde sea que est� tu bot�n -->
        <c:if test="${isAdmin}">
            <form action="/add-todo">
                <button type="submit">Acci�n para administradores</button>
            </form>
        </c:if>
    </div>
    <br>
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3>Lista de Usuarios</h3>
            <p>User Role: ${userRole}</p>
        </div>
        <div class="panel-body">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th width="20%">N�mero de usuario</th>
                        <th width="15%">Placa</th>
                        <th width="15%">Hora de entrada</th>
                        <th width="15%">Hora de salida</th>
                        <th width="20%">Ubicaci�n</th>
                        <th width="15%">Tipo de veh�culo</th>
                        <th width="20%"></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${todos}" var="todo" varStatus="status">
                        <tr>
                            <td>${status.index + 1}</td>
                            <td>${todo.plate}</td>
                            <td>${todo.entryHour}</td>
                            <td>${todo.exitHour}</td>
                            <td>${todo.location}</td>
                            <td>${todo.vehicleType}</td>
                            <td>
                                <a type="button" class="btn btn-success" href="/update-todo?id=${todo.id}">Actualizar</a>
                                <a type="button" class="btn btn-warning" href="/delete-todo?id=${todo.id}">Eliminar</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%@ include file="common/footer.jsp"%>

