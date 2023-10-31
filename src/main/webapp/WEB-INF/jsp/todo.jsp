<%@ include file="common/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/navigation.jsp"%>
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3 ">
            <div class="panel panel-primary">
                <div class="panel-heading">Agregar Vehículo</div>
                <div class="panel-body">
                    <form:form method="post" modelAttribute="todo">
                        <fieldset class="form-group">
                            <form:label path="plate">Placa del Vehículo (Máx. 6 caracteres)</form:label>
                            <form:input path="plate" type="text" class="form-control" required="required" maxlength="6" />
                            <form:errors path="plate" cssClass="text-warning" />
                        </fieldset>

                        <fieldset class="form-group">
                            <form:label path="entryHour">Hora de Entrada (Numérico de 0 a 24)</form:label>
                            <form:input path="entryHour" type="number" class="form-control" required="required" min="0" max="24" />
                            <form:errors path="entryHour" cssClass="text-warning" />
                        </fieldset>

                        <fieldset class="form-group">
                            <form:label path="exitHour">Hora de Salida (Numérico de 0 a 24)</form:label>
                            <form:input path="exitHour" type="number" class="form-control" required="required" min="0" max="24" />
                            <form:errors path="exitHour" cssClass="text-warning" />
                        </fieldset>

                        <fieldset class="form-group">
                            <form:label path="location">Ubicación</form:label>
                            <form:input path="location" type="text" class="form-control" required="required" />
                            <form:errors path="location" cssClass="text-warning" />
                        </fieldset>

                        <fieldset class="form-group">
                            <form:label path="vehicleType">Tipo de Vehículo</form:label>
                            <form:select path="vehicleType" class="form-control">
                                <form:option value="car" label="Carro" />
                                <form:option value="motorcycle" label="Motocicleta" />
                                <form:option value="bike" label="Cicla" />
                            </form:select>
                        </fieldset>

                        <button type="submit" class="btn btn-success">Guardar</button>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="common/footer.jsp"%>
