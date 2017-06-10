package ${basepackage}.service.data;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import ig.archer.infrastructure.data.StateData;
import ig.archer.infrastructure.data.type.State;

@Aspect
@Component
public class AopException {
	@Autowired
	private Logger logger;

	@Pointcut("execution(* ${basepackage}.service.controller.*.*(..))")
	public void pointCut() {
	}

	// @Before("pointCut()")
	public void before(JoinPoint joinPoint) {
	}

	// @AfterReturning("pointCut()")
	public void applaud() {
	}

	// @AfterThrowing("pointCut()")
	public void demandRefund() {
	}

	// @After("pointCut()")
	public void after(JoinPoint joinPoint) {
	}

	@Around("pointCut()")
	public Object watchPerformance(ProceedingJoinPoint joinpoint) {
		Object o = null;
		try {
			o = joinpoint.proceed();
		} catch (Throwable t) {
			t.printStackTrace();
			o = new StateData<Object>(State.Failure, "操作失败!");
			String className = joinpoint.getSignature().getClass().getName();
			String methodName = joinpoint.getSignature().getName();
			logger.error(String.format("执行类[%s]下方法[%s]出现错误.", className, methodName), t);
		}
		return o;
	}
}
