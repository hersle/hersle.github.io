Conventions
===========

The equations on this page are written

- in natural units $c = G = 1$ and
- with metric signature $(-,+,+,+)$.

General formulas
================

Covariant derivative
--------------------
$$
\begin{align}
\nabla_\mu T^{\alpha_1 \ldots \alpha_M}_{\beta_1 \ldots \beta_N} &= \partial_\mu T^{\alpha_1 \ldots \alpha_M}_{\beta_1 \ldots \beta_N} \\
                                                                 &+ \Gamma^{\alpha_1}_{\sigma \mu} T^{\sigma \alpha_2 \ldots \alpha_M}_{\beta_1 \ldots \beta_N} + \ldots + \Gamma^{\alpha_M}_{\sigma\mu} T^{\alpha_1 \ldots \alpha_{M-1} \sigma}_{\beta_1 \ldots \beta_N} \\
                                                                 &- \Gamma^\sigma_{\beta_1 \mu} T^{}_{\sigma \beta_2 \ldots \beta_N} - \ldots - \Gamma^\sigma_{\beta_N \mu} T^{}_{\beta_1 \ldots \beta_{M-1} \sigma}
\end{align}
$$

Christoffel symbols
-------------------
$$
\Gamma^\lambda_{\mu\nu} = \ldots
$$
Assuming torsion-free $\Gamma^\lambda_{\mu\nu} = \Gamma^\lambda_{\nu\mu}$ (symmetric in lower indices) and metric compatibility $\nabla_\lambda g_{\mu\nu} = 0$):
$$
\Gamma^\lambda_{\mu\nu} = \frac12 g^{\lambda \rho} (\partial_\mu g_{\nu\rho} + \partial_\nu g_{\mu\rho} - \partial_\rho g_{\mu\nu})
$$

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

Jordan-Brans-Dicke gravity
==========================

The Jordan-Brans-Dicke theory of gravity is a scalar-tensor modified gravity theory.
Intuition: Newton's constant replaced by a time-varying field, allowing it to vary from time to time (and place to place?).

Action
------

In natural units $G = c = 1$,
the action of Brans-Dicke theory coupled to matter is
$$
S = \overbrace{\frac{1}{16\pi} \int d^4 x \sqrt{-g} \, \Big(\phi R - \frac{\omega}{\phi} g^{\mu\nu} \partial_\mu \phi \, \partial_\nu \phi\Big)}^{S_{BD}} + \overbrace{\int d^4x \sqrt{-g} \, \mathcal{L}_M}^{S_M} ,
$$
where $g_{\mu\nu}(x)$ and $g(x)$ is the metric tensor and its determinant,
$\phi(x)$ is a scalar field
and $\omega$ is a constant parameter.

Equations of motion
-----------------------------

The (classical) equations of motion for the metric and scalar field
follows from the principle of least action $\delta S = 0$.

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
\delta S = \frac{1}{16\pi} \int d^4 x \sqrt{-g} \, \delta g^{\mu\nu} \Big[ \phi G_{\mu\nu} - \nabla_\mu \nabla_\nu \phi + g_{\mu\nu} \nabla^2 \phi + \frac{\omega}{\phi} \Big(\frac12 g_{\mu\nu} (\partial \phi)^2 - \partial_\mu \phi \partial_\nu \phi \Big) - 8 \pi \, T_{\mu\nu} \Big].
$$

For this to hold for any variation $\delta g^{\mu\nu}$ in the metric,
it must satisfy
$$
G_{\mu\nu} = \frac{8 \pi}{\phi} T_{\mu\nu} + \frac{\omega}{\phi^2} \Big(\partial_\mu \phi \partial_\nu \phi - \frac12 g_{\mu\nu} (\partial \phi)^2 \Big) + \frac{1}{\phi} \Big( \nabla_\mu \nabla_\nu \phi - g_{\mu\nu} \nabla^2 \phi \Big).
$$

The variaction with respect to the scalar field is
$$
\begin{align}
\delta S &= \frac{1}{16\pi} \int d^4 x \sqrt{-g} \, \frac{\delta S}{\delta \phi} \delta \phi \\
         &= \frac{1}{16\pi} \int d^4 x \sqrt{-g} \, [R + \frac{\omega}{\phi^2} g^{\mu\nu} \partial_\mu \phi \, \partial_\nu \phi] \delta \phi \\
         &= \ldots
\end{align}
$$
