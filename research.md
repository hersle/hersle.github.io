Conventions
===========

The equations on this page are written

- in natural units $c = G = 1$ and
- with metric signature $(-,+,+,+)$.

Manifold calculus (?)
=====================

Covariant derivative
--------------------
The covariant derivative for a rank $(M,N)$ tensor $T$ is
$$
\begin{align}
\nabla_\mu T^{\alpha_1 \ldots \alpha_M}_{\beta_1 \ldots \beta_N} &= \partial_\mu T^{\alpha_1 \ldots \alpha_M}_{\beta_1 \ldots \beta_N} \\
                                                                 &+ \Gamma^{\alpha_1}_{\sigma \mu} T^{\sigma \alpha_2 \ldots \alpha_M}_{\beta_1 \ldots \beta_N} + \ldots + \Gamma^{\alpha_M}_{\sigma\mu} T^{\alpha_1 \ldots \alpha_{M-1} \sigma}_{\beta_1 \ldots \beta_N} \\
                                                                 &- \Gamma^\sigma_{\beta_1 \mu} T^{}_{\sigma \beta_2 \ldots \beta_N} - \ldots - \Gamma^\sigma_{\beta_N \mu} T^{}_{\beta_1 \ldots \beta_{M-1} \sigma}.
\end{align}
$$
That is, for each ....

Christoffel symbols
-------------------
$$
\Gamma^\lambda_{\mu\nu} = \ldots
$$
Assuming torsion-free $\Gamma^\lambda_{\mu\nu} = \Gamma^\lambda_{\nu\mu}$ (symmetric in lower indices) and metric compatibility $\nabla_\lambda g_{\mu\nu} = 0$):
$$
\Gamma^\lambda_{\mu\nu} = \frac12 g^{\lambda \rho} (\partial_\mu g_{\nu\rho} + \partial_\nu g_{\mu\rho} - \partial_\rho g_{\mu\nu})
\tag{123}
$$
[(123)](#)

Variational manifold calculus (?)
=================================

Variation of Christoffel symbols
--------------------------------
Variation with respect to metric
$$
\begin{align}
\delta \Gamma^\lambda_{\mu\nu} &= \frac12 \delta g^{\lambda\rho} \overbrace{(\partial_\mu g_{\nu\rho} + \partial_\nu g_{\mu\rho} - \partial_\rho g_{\mu\nu})}^{2 g_{\sigma\rho} \Gamma^\sigma_{\mu\nu}} \\
                               &+ \frac12        g^{\lambda\rho} (\partial_\mu \delta g_{\nu\rho} + \partial_\nu \delta g_{\mu\rho} - \partial_\rho \delta g_{\mu\nu}) & (\text{product rule}) \\
                               &= \frac12 g^{\lambda\rho} (\partial_\mu \delta g_{\nu\rho} + \partial_\nu \delta g_{\mu\rho} - \partial_\rho \delta g_{\mu\nu} - 2 \Gamma^\sigma_{\mu\nu} \delta g_{\rho\sigma}) & (\delta g^{\lambda\rho} = -g^{\alpha\lambda} g^{\beta\rho} \delta g_{\alpha\beta}) \\
                               &= \frac12 g^{\lambda\rho} (\partial_\mu \delta g_{\nu\rho} - \Gamma^\sigma_{\nu\mu} \delta g_{\sigma\rho} - \textcolor{red}{\Gamma^\sigma_{\rho\mu} \delta g_{\nu\sigma}} +{} \\
                               &\phantom{{}={}} \phantom{\frac12 g^{\lambda\rho} (} \partial_\nu \delta g_{\mu\rho} - \Gamma^\sigma_{\mu\nu} \delta g_{\sigma\rho} - \textcolor{blue}{\Gamma^\sigma_{\rho\nu} \delta g_{\mu\sigma}} -{} \\
                               &\phantom{{}={}} \phantom{\frac12 g^{\lambda\rho} (} \partial_\rho \delta g_{\mu\nu} + \textcolor{red}{\Gamma^\sigma_{\mu\rho} \delta g_{\sigma\nu}} + \textcolor{blue}{\Gamma^\sigma_{\nu\rho} \delta g_{\mu\sigma}}) & (\text{add $0 = \textcolor{red}{A} - \textcolor{red}{A} + \textcolor{blue}{B} - \textcolor{blue}{B}$}) \\
                               &= \frac12 g^{\lambda\rho} (\nabla_\mu g_{\nu\rho} + \nabla_\nu g_{\mu\rho} - \nabla_\rho g_{\mu\nu})
\end{align}
$$

Variation of Riemann tensor
---------------------------

Variation of Ricci tensor
-------------------------

Variation of Ricci scalar (Palatini identity)
-------------------------

Principle of least action
=========================

$$
\delta S = 0
$$

Euler-Lagrange equation
-----------------------

The variaction of a general action $S[\phi, \nabla_\mu \phi] = \int d^4 x \sqrt{-g(x)} \, \mathcal{L}(\phi, \nabla_\mu \phi)$ with a scalar field $\phi(x)$ is
$$
\begin{align}
\delta S &= \int d^4 x \sqrt{-g} \bigg[ \frac{\delta \mathcal{L}}{\delta \phi} \delta\phi + \frac{\delta \mathcal{L}}{\delta (\nabla_\mu \phi)} \delta (\nabla_\mu \phi) \bigg] & (\text{chain rule}) \\
         &= \int d^4 x \sqrt{-g} \bigg[ \frac{\delta \mathcal{L}}{\delta \phi} \delta\phi + \frac{\delta \mathcal{L}}{\delta (\nabla_\mu \phi)} \nabla_\mu (\delta \phi) \bigg] & (\delta \nabla \phi = \nabla \delta \phi) \\
         &= \int d^4 x \sqrt{-g} \bigg[ \frac{\delta \mathcal{L}}{\delta \phi} - \nabla_\mu \bigg( \frac{\delta \mathcal{L}}{\delta (\nabla_\mu \phi)} \bigg) \bigg] \delta\phi & (\text{by parts, no variation on boundary}) \\
         &= \int d^4 x \sqrt{-g} \bigg[ \frac{\partial \mathcal{L}}{\partial \phi} - \nabla_\mu \bigg( \frac{\partial \mathcal{L}}{\partial (\nabla_\mu \phi)} \bigg) \bigg] \delta\phi & (\delta/\delta \phi = \partial/\partial \phi) , \\
\end{align}
$$
so for the [principle of least action](#principle-of-least-action) to hold for any field variation $\delta\phi$,
the field must satisfy the Euler-Lagrange equation
$$
\frac{\partial \mathcal{L}}{\partial \phi} - \nabla_\mu \bigg( \frac{\partial \mathcal{L}}{\partial (\nabla_\mu \phi)} \bigg) = 0 .
$$
<!--
From the identity $\log g = \mathrm{tr} \log g$ and
the [Christoffel symbols'](#christoffel-symbols) concetenation $\Gamma^\alpha_{\mu\alpha} = g^{\alpha\beta} \partial_\mu g_{\alpha\beta} / 2$,
we have
$$
\frac{\partial_\mu g}{g} = \mathrm{tr} \big(g^{-1}\partial_\mu g\big) = g^{\alpha\beta} \partial_\mu g_{\alpha\beta} = 2 \Gamma^\alpha_{\mu\alpha},
$$
so $\partial_\mu \sqrt{-g} = -\partial_\mu g / 2 \sqrt{-g} = \sqrt{-g} \, \Gamma^\alpha_{\mu\alpha}$.
For metric determinants $g$ that are independent of the field, applying the product rule to the second term in the Euler-Lagrange equation yields
$$
\sqrt{-g} \bigg[ \frac{\partial\mathcal{L}}{\partial\phi} - (\partial_\mu + \Gamma^\alpha_{\mu\alpha}) \frac{\partial \mathcal{L}}{\partial (\partial_\mu \phi)} \bigg] = 0.
$$
Recognizing the covariant derivative,
we find the equivalent covariant derivative Euler-Lagrange equation
$$
\frac{\partial\mathcal{L}}{\partial\phi} - \nabla_\mu \bigg( \frac{\partial \mathcal{L}}{\partial (\partial_\mu \phi)} \bigg) = 0.
$$
-->

For even more details, see
[correct Euler-Lagrange equation in curved spacetime](https://physics.stackexchange.com/a/723865/299916).

Jordan-Brans-Dicke gravity
==========================

The Jordan-Brans-Dicke theory of gravity is a scalar-tensor modified gravity theory.
Intuition: Newton's constant replaced by a time-varying field, allowing it to vary from time to time (and place to place?).

Action
------

The total action of Brans-Dicke theory coupled to matter is
$$
S = S_{BD} + S_M = \frac{1}{16\pi} \int d^4 x \sqrt{-g} \, \Big(\phi R - \frac{\omega}{\phi} g^{\mu\nu} \partial_\mu \phi \, \partial_\nu \phi\Big) + \int d^4x \sqrt{-g} \, \mathcal{L}_M ,
$$
where $g_{\mu\nu}(x)$ is the metric tensor,
$g(x) < 0$ is its determinant,
$\phi(x)$ is a scalar field,
$\omega$ is a constant parameter
and $\partial_\mu \phi = \nabla_\mu \phi$ coincides for the scalar field.

Equations of motion
-----------------------------

The (classical) equations of motion for the metric and scalar field
follows from the [principle of least action](#principle-of-least-action).

First, the variation of the Brans-Dicke action (variaction) with respect to the metric is
$$
\begin{align}
\delta S_{BD} &= \int d^4 x \frac{\delta S_{BD}}{\delta g^{\mu\nu}} \delta g^{\mu\nu} \\
              &= \frac{1}{16\pi} \int d^4 x \Big[\frac{\delta\sqrt{-g}}{\delta g^{\mu\nu}} \Big(\phi R - \frac{\omega}{\phi} g^{\mu\nu} \partial_\mu \phi \, \partial_\nu \phi\Big) + \sqrt{-g} \Big(\phi \frac{\delta R}{\delta g^{\mu\nu}} - \frac{\omega}{\phi} \frac{\delta g^{\alpha\beta}}{\delta g^{\mu\nu}} \partial_\alpha \phi \, \partial_\beta \phi\Big)\Big] \delta g^{\mu\nu} \\
              &= \frac{1}{16\pi} \int d^4 x \sqrt{-g} \Big[ \phi \Big(\frac{\delta R}{\delta g^{\mu\nu}} - \frac{R}{2} g_{\mu\nu} \delta g^{\mu\nu}\Big) + \frac{\omega}{\phi} \Big(\frac12 g_{\alpha\beta} \delta g^{\alpha\beta} g^{\mu\nu} - \delta g^{\mu\nu}\Big) \partial_\mu \phi \, \partial_\nu \phi \Big] \\
              &= \frac{1}{16\pi} \int d^4 x \sqrt{-g} \Big[ \phi \Big(R_{\mu\nu} - \frac{R}{2} g_{\mu\nu} - \nabla_\mu \nabla_\nu + g_{\mu\nu} \nabla^2 \Big) + \frac{\omega}{\phi} \Big(\frac12 g_{\mu\nu} (\partial \phi)^2 - \partial_\mu \phi \, \partial_\nu \phi \Big) \Big] \delta g^{\mu\nu} \\
              &= \frac{1}{16\pi} \int d^4 x \sqrt{-g} \, \delta g^{\mu\nu} \Big[ \phi \, G_{\mu\nu} - \nabla_\mu \nabla_\nu \phi + g_{\mu\nu} \nabla^2 \phi + \frac{\omega}{\phi} \Big(\frac12 g_{\mu\nu} (\partial \phi)^2 - \partial_\mu \phi \, \partial_\nu \phi \Big) \Big] .
\end{align}
$$

Second, the energy-momentum tensor is $T_{\mu\nu} = -(\sqrt{-g}/2) \, (\delta S_M / \delta g^{\mu\nu})$,
so the matter variaction is
$$
\delta S_M = \int d^4 x \frac{\delta S_M}{\delta g^{\mu\nu}} \delta g^{\mu\nu}
           = - \frac12 \int d^4 x \sqrt{-g} \, T_{\mu\nu}.
$$

Thus, the full variaction with respect to the metric is
$$
\delta S = \frac{1}{16\pi} \int d^4 x \sqrt{-g} \, \delta g^{\mu\nu} \Big[ \phi G_{\mu\nu} - \nabla_\mu \nabla_\nu \phi + g_{\mu\nu} \nabla^2 \phi + \frac{\omega}{\phi} \Big(\frac12 g_{\mu\nu} (\partial \phi)^2 - \partial_\mu \phi \, \partial_\nu \phi \Big) - 8 \pi \, T_{\mu\nu} \Big].
$$

For this to hold for any variation $\delta g^{\mu\nu}$ of the metric,
it must satisfy
$$
G_{\mu\nu} = \frac{8 \pi}{\phi} T_{\mu\nu} + \frac{\omega}{\phi^2} \Big(\partial_\mu \phi \, \partial_\nu \phi - \frac12 g_{\mu\nu} (\partial \phi)^2 \Big) + \frac{1}{\phi} \Big( \nabla_\mu \nabla_\nu \phi - g_{\mu\nu} \nabla^2 \phi \Big).
$$

(TODO: complete)
The equation of motion for the scalar field $\phi$ is easier to get from the [Euler-Lagrange equation](#euler-lagrange-equation) with Lagrangian density
$\mathcal{L} = \mathcal{L}_{BD} = \phi R - (\omega / \phi) g^{\mu\nu} \nabla_\mu \phi \, \nabla_\nu \phi$ is the Lagrangian density without $\sqrt{-g}$ ($\mathcal{L}_M$ is independent of $\phi$ and does not contribute).
As $\partial_\mu \phi = \nabla_\mu \phi$, this gives
$$
\begin{align}
0 &= R + \frac{\omega}{\phi^2} g^{\mu\nu} \partial_\mu \phi \, \partial_\nu \phi - \nabla_\mu \Big(\frac{\omega}{\phi} g^{\mu\nu} \partial_\nu \phi\Big) \\
  &= R + \frac{\omega}{\phi^2} (\partial \phi)^2 - \Big(-\frac{\omega}{\phi^2} \nabla_\mu \phi \, \partial^\mu \phi + \frac{\omega}{\phi} \nabla_\mu \phi \, \partial^\mu \phi \Big) \\
  &= R + 2 \frac{\omega}{\phi^2} (\partial \phi)^2 - \frac{\omega}{\phi} \partial^2 \phi .
\end{align}
$$
To eliminate $R$,
we use that $G^\mu_{\phantom{\mu}\mu} = R^\mu_{\phantom{\mu}\mu} - R \, g^\mu_{\phantom{\mu}\mu}/2 = R - 2R = -R$
and take the trace of the field equations
$$
-R = \frac{8\pi}{\phi} T - \frac{\omega}{\phi^2} (\partial \phi)^2 - \frac{3}{\phi} \nabla^2 \phi .
$$

Have $\nabla \phi = \partial \phi$, but is $\nabla^2 \phi = \partial^2 \phi$?
Wouldn't we get an additional Christoffel symbol?
