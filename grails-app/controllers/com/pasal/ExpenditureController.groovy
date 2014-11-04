package com.pasal

import org.springframework.dao.DataIntegrityViolationException

class ExpenditureController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [expenditureInstanceList: Expenditure.list(params), expenditureInstanceTotal: Expenditure.count()]
    }

    def create() {
        [expenditureInstance: new Expenditure(params)]
    }

    def save() {
        def expenditureInstance = new Expenditure(params)
        if (!expenditureInstance.save(flush: true)) {
            render(view: "create", model: [expenditureInstance: expenditureInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'expenditure.label', default: 'Expenditure'), expenditureInstance.id])
        redirect(action: "show", id: expenditureInstance.id)
    }

    def show(Long id) {
        def expenditureInstance = Expenditure.get(id)
        if (!expenditureInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'expenditure.label', default: 'Expenditure'), id])
            redirect(action: "list")
            return
        }

        [expenditureInstance: expenditureInstance]
    }

    def edit(Long id) {
        def expenditureInstance = Expenditure.get(id)
        if (!expenditureInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'expenditure.label', default: 'Expenditure'), id])
            redirect(action: "list")
            return
        }

        [expenditureInstance: expenditureInstance]
    }

    def update(Long id, Long version) {
        def expenditureInstance = Expenditure.get(id)
        if (!expenditureInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'expenditure.label', default: 'Expenditure'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (expenditureInstance.version > version) {
                expenditureInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'expenditure.label', default: 'Expenditure')] as Object[],
                        "Another user has updated this Expenditure while you were editing")
                render(view: "edit", model: [expenditureInstance: expenditureInstance])
                return
            }
        }

        expenditureInstance.properties = params

        if (!expenditureInstance.save(flush: true)) {
            render(view: "edit", model: [expenditureInstance: expenditureInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'expenditure.label', default: 'Expenditure'), expenditureInstance.id])
        redirect(action: "show", id: expenditureInstance.id)
    }

    def delete(Long id) {
        def expenditureInstance = Expenditure.get(id)
        if (!expenditureInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'expenditure.label', default: 'Expenditure'), id])
            redirect(action: "list")
            return
        }

        try {
            expenditureInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'expenditure.label', default: 'Expenditure'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'expenditure.label', default: 'Expenditure'), id])
            redirect(action: "show", id: id)
        }
    }
}
